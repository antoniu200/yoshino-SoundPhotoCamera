package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ThumbnailFactory;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ImageLoader;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ReviewScreen extends FrameLayout {
    public static final String TAG = "ReviewScreen";
    protected LinearLayout mAutoReviewRight;
    protected List<ReviewMenuButton> mButtonList;
    private RotatableDialog mDialog;
    private int mDisplayOrientation;
    protected boolean mHasMpo;
    protected String mMime;
    private Rect mOrientedPictureSize;
    protected ImageView mPictureImage;
    protected Uri mUri;
    protected View mViewButtonLayout;

    abstract void backToViewFinder();

    abstract ContentResolverUtilListener getContentResolverUtilListener();

    abstract MessagePopup getMessagePopup();

    public ReviewScreen(Context context) {
        super(context);
        this.mDisplayOrientation = 2;
        this.mOrientedPictureSize = new Rect();
    }

    public ReviewScreen(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDisplayOrientation = 2;
        this.mOrientedPictureSize = new Rect();
    }

    public ReviewScreen(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDisplayOrientation = 2;
        this.mOrientedPictureSize = new Rect();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mPictureImage = (ImageView) findViewById(R.id.auto_review_picture_image);
        this.mButtonList = new ArrayList();
        ReviewMenuButton playIcon = (ReviewMenuButton) findViewById(R.id.auto_review_play);
        this.mButtonList.add(playIcon);
        ReviewMenuButton viewIcon = (ReviewMenuButton) findViewById(R.id.auto_review_view);
        this.mButtonList.add(viewIcon);
        ReviewMenuButton editIcon = (ReviewMenuButton) findViewById(R.id.auto_review_edit);
        this.mButtonList.add(editIcon);
        ReviewMenuButton shareIcon = (ReviewMenuButton) findViewById(R.id.auto_review_share);
        this.mButtonList.add(shareIcon);
        ReviewMenuButton deleteIcon = (ReviewMenuButton) findViewById(R.id.auto_review_delete);
        this.mButtonList.add(deleteIcon);
        this.mViewButtonLayout = findViewById(R.id.auto_review_view_layout);
        this.mAutoReviewRight = (LinearLayout) findViewById(R.id.auto_review_right);
        ((ViewGroup.MarginLayoutParams) this.mAutoReviewRight.getLayoutParams()).setMargins(0, 0, LayoutDependencyResolver.getSystemBarMargin(getContext()), 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mButtonList != null) {
            this.mButtonList.clear();
        }
    }

    public boolean setupScreen(Activity activity, Uri uri, byte[] imageData, String videoPath, String mime, Rect pictureRect, int reviewOrientation, int pictureOrientation, boolean isFront, LayoutDependencyResolver.ScreenAspect screenAspect) throws IOException {
        Rect surfaceRect;
        Bitmap orgImage;
        if (screenAspect == LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE) {
            ((ViewGroup.MarginLayoutParams) this.mAutoReviewRight.getLayoutParams()).setMargins(0, 0, 0, 0);
        } else {
            ((ViewGroup.MarginLayoutParams) this.mAutoReviewRight.getLayoutParams()).setMargins(0, 0, LayoutDependencyResolver.getSystemBarMargin(getContext()), 0);
        }
        if ((reviewOrientation == 90 || reviewOrientation == 270) && this.mDisplayOrientation == 2 && pictureRect.width() < pictureRect.height()) {
            float aspectRatio = pictureRect.height() / pictureRect.width();
            Rect viewfinderRect = LayoutDependencyResolver.getViewFinderSize(activity);
            surfaceRect = new Rect(0, 0, (int) (viewfinderRect.width() / aspectRatio), viewfinderRect.width());
        } else {
            float aspectRatio2 = pictureRect.width() / pictureRect.height();
            surfaceRect = LayoutDependencyResolver.getSurfaceViewRect(activity, aspectRatio2, screenAspect);
        }
        if (reviewOrientation == 0 || reviewOrientation == 180) {
            this.mOrientedPictureSize = new Rect(surfaceRect);
        } else {
            this.mOrientedPictureSize = new Rect(0, 0, surfaceRect.height(), surfaceRect.width());
        }
        updatePictureImageLayout(this.mDisplayOrientation, this.mOrientedPictureSize);
        int rotation = 0;
        if (MediaSavingConstants.MEDIA_TYPE_MPEG4_MIME.equals(mime) || MediaSavingConstants.MEDIA_TYPE_3GP_MIME.equals(mime)) {
            if (uri != null) {
                orgImage = ThumbnailFactory.createVideoThumbnail(getContext(), uri);
            } else {
                orgImage = ThumbnailFactory.createVideoThumbnail(videoPath);
            }
            if (isFront) {
                switch (pictureOrientation) {
                    case 90:
                        rotation = 90;
                        break;
                    case 180:
                        rotation = 180;
                        break;
                    case 270:
                        rotation = 270;
                        break;
                    default:
                        rotation = 0;
                        break;
                }
            } else {
                switch (pictureOrientation) {
                    case 90:
                        rotation = -90;
                        break;
                    case 180:
                        rotation = -180;
                        break;
                    case 270:
                        rotation = -270;
                        break;
                    default:
                        rotation = 0;
                        break;
                }
            }
            ((ImageView) findViewById(R.id.auto_review_edit)).setImageResource(R.drawable.cam_video_preview_edit_icn);
        } else {
            if (uri != null) {
                orgImage = new ImageLoader(getContext(), uri, reviewOrientation).load(this.mOrientedPictureSize.width(), this.mOrientedPictureSize.height());
            } else {
                orgImage = new ImageLoader(getContext(), imageData, reviewOrientation).load(this.mOrientedPictureSize.width(), this.mOrientedPictureSize.height());
            }
            if (isFront) {
                switch (pictureOrientation) {
                    case 90:
                        rotation = 180;
                        break;
                    case 270:
                        rotation = 180;
                        break;
                    default:
                        rotation = 0;
                        break;
                }
            }
            ((ImageView) findViewById(R.id.auto_review_edit)).setImageResource(R.drawable.cam_photo_preview_edit_icn);
        }
        boolean isEditSupported = AutoReviewWindow.isEditorAvailable(getContext(), uri, mime);
        findViewById(R.id.auto_review_edit).setVisibility(isEditSupported ? 0 : 4);
        if (orgImage == null) {
            CameraLogger.e(TAG, "Cannot create the image.");
            return false;
        }
        if (rotation != 0) {
            Bitmap rotateImage = rotateThumbnail(orgImage, rotation);
            orgImage = rotateImage;
        }
        if (orgImage == null) {
            CameraLogger.e(TAG, "Cannot rotate the image.");
            return false;
        }
        this.mPictureImage.setImageBitmap(orgImage);
        this.mUri = uri;
        this.mHasMpo = false;
        this.mMime = mime;
        return true;
    }

    public void showScreen() {
        setVisible(true);
    }

    public void hideScreen() {
        setVisible(false);
    }

    public void clearScreen() {
        this.mPictureImage.setImageBitmap(null);
    }

    private void setVisiblePlayIcon(boolean visible) {
        int visibility;
        if (visible) {
            visibility = 0;
        } else {
            visibility = 4;
        }
        this.mButtonList.get(0).setVisibility(visibility);
    }

    public void setVisibleViewIcon(boolean visible) {
        int visibility;
        int weightSum;
        if (visible) {
            visibility = 0;
            weightSum = 4;
        } else {
            visibility = 8;
            weightSum = 3;
        }
        this.mViewButtonLayout.setVisibility(visibility);
        this.mAutoReviewRight.setWeightSum(weightSum);
    }

    private void setVisible(boolean visible) {
        int visibility;
        if (visible) {
            visibility = 0;
        } else {
            visibility = 4;
        }
        setVisibility(visibility);
        if (MediaSavingConstants.MEDIA_TYPE_JPEG_MIME.equals(this.mMime) || this.mUri == null) {
            setVisiblePlayIcon(false);
        } else {
            setVisiblePlayIcon(visible);
        }
    }

    public void setOrientation(int orientation) {
        float degree = RotationUtil.getAngle(orientation);
        for (ReviewMenuButton button : this.mButtonList) {
            button.setRotation(degree);
        }
    }

    public void updatePictureImageLayout(int displayOrientation, Rect pictureSize) {
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) this.mPictureImage.getLayoutParams();
        if (displayOrientation == 1) {
            params.width = getHeight();
            params.height = pictureSize.height();
            if (pictureSize.width() < pictureSize.height()) {
                params.gravity = 17;
            } else {
                params.gravity = 17;
            }
        } else {
            params.width = pictureSize.width();
            params.height = getHeight();
            if (pictureSize.width() < pictureSize.height()) {
                params.gravity = 17;
            } else {
                params.gravity = 3;
            }
        }
        this.mPictureImage.setLayoutParams(params);
    }

    protected void cancelDialog() {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            this.mDialog = null;
        }
    }

    protected void setCurrentDialog(RotatableDialog dialog) {
        cancelDialog();
        this.mDialog = dialog;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
        this.mHasMpo = false;
    }

    public void setUri(Uri uri, boolean hasMpo) {
        this.mUri = uri;
        this.mHasMpo = hasMpo;
    }

    public void showRightIcons(Boolean bool) {
        if (this.mAutoReviewRight != null) {
            if (bool.booleanValue()) {
                this.mAutoReviewRight.setVisibility(0);
            } else {
                this.mAutoReviewRight.setVisibility(4);
            }
        }
    }

    private Bitmap rotateThumbnail(Bitmap bitmap, int degree) {
        int w = bitmap.getWidth();
        int h = bitmap.getHeight();
        if (degree == 0) {
            return bitmap;
        }
        Matrix m = new Matrix();
        m.setRotate(degree, w / 2.0f, h / 2.0f);
        Bitmap temp = Bitmap.createBitmap(bitmap, 0, 0, w, h, m, false);
        bitmap.recycle();
        return temp;
    }
}