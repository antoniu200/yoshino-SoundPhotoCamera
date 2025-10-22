.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->showAndConfirmDisclaimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 1178
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z
    invoke-static {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$1302(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Z)Z

    .line 1179
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    move-result-object v0

    const-string v1, "ACCEPT_DISCLAIMER"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Z)V

    .line 1181
    return-void
.end method
