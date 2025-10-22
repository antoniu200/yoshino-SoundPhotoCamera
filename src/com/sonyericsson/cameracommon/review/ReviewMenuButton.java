package com.sonyericsson.cameracommon.review;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public abstract class ReviewMenuButton extends ImageView {
    public static final String TAG = "ReviewMenuButton";
    private final View.OnClickListener mOnClickListener;
    private OnSelectedReviewMenuButtonListener mOnSelectedListener;
    protected ReviewScreen mReviewScreen;

    protected abstract RotatableDialog select();

    public ReviewMenuButton(Context context) {
        super(context);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.review.ReviewMenuButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReviewMenuButton.this.mReviewScreen != null && ReviewMenuButton.this.mReviewScreen.getVisibility() == 0 && ReviewMenuButton.this.getVisibility() == 0) {
                    RotatableDialog dialog = ReviewMenuButton.this.select();
                    if (dialog != null) {
                        ReviewMenuButton.this.notifySelected(dialog);
                    } else {
                        ReviewMenuButton.this.notifySelected();
                    }
                }
            }
        };
    }

    public ReviewMenuButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.review.ReviewMenuButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReviewMenuButton.this.mReviewScreen != null && ReviewMenuButton.this.mReviewScreen.getVisibility() == 0 && ReviewMenuButton.this.getVisibility() == 0) {
                    RotatableDialog dialog = ReviewMenuButton.this.select();
                    if (dialog != null) {
                        ReviewMenuButton.this.notifySelected(dialog);
                    } else {
                        ReviewMenuButton.this.notifySelected();
                    }
                }
            }
        };
    }

    public ReviewMenuButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.review.ReviewMenuButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReviewMenuButton.this.mReviewScreen != null && ReviewMenuButton.this.mReviewScreen.getVisibility() == 0 && ReviewMenuButton.this.getVisibility() == 0) {
                    RotatableDialog dialog = ReviewMenuButton.this.select();
                    if (dialog != null) {
                        ReviewMenuButton.this.notifySelected(dialog);
                    } else {
                        ReviewMenuButton.this.notifySelected();
                    }
                }
            }
        };
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        setOnClickListener(this.mOnClickListener);
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        setOnClickListener(null);
        super.onDetachedFromWindow();
    }

    public void setReviewScreen(ReviewScreen reviewScreen) {
        this.mReviewScreen = reviewScreen;
    }

    public void setOnSelectedListener(OnSelectedReviewMenuButtonListener listener) {
        this.mOnSelectedListener = listener;
    }

    protected MessagePopup getMessagePopup() {
        return this.mReviewScreen.getMessagePopup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySelected() {
        if (this.mOnSelectedListener != null) {
            this.mOnSelectedListener.onSelected(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySelected(RotatableDialog doalog) {
        if (this.mOnSelectedListener != null) {
            this.mOnSelectedListener.onSelected(this, doalog);
        }
    }
}