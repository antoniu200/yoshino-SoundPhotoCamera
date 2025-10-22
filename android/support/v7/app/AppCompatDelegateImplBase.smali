.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;,
        Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field private mEatKeyUpEvent:Z

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_2b

    move v1, v2

    :goto_9
    sput-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    .line 51
    sget-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v1, :cond_21

    sget-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    if-nez v1, :cond_21

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 55
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplBase$1;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    sput-boolean v2, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    .line 84
    :cond_21
    new-array v1, v2, [I

    const v2, 0x1010054

    aput v2, v1, v3

    sput-object v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    return-void

    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_2b
    move v1, v3

    .line 44
    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 115
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 117
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 118
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-eqz v2, :cond_1f

    .line 119
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AppCompat has already installed itself into the Window"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_1f
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 124
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 126
    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    invoke-static {p1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    .local v1, "winBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_41

    .line 130
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_41
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 133
    return-void
.end method


# virtual methods
.method public applyDayNight()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 187
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 188
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    :cond_b
    if-nez v1, :cond_f

    .line 193
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 195
    :cond_f
    return-object v1
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .prologue
    .line 180
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_18

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 158
    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 159
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_13
    invoke-direct {v1, v0}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 161
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 159
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    goto :goto_13
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 305
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method final isStarted()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    .line 255
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 245
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 250
    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 260
    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 176
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 138
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method
