.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$Factory;
.super Ljava/lang/Object;
.source "SoundPhotoViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    .registers 3
    .param p0, "activity"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p1, "preference"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .prologue
    .line 35
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;-><init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)V

    return-object v0
.end method
