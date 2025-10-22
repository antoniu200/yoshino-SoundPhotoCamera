.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1189
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1193
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->onBackPressed()V

    .line 1195
    :cond_d
    return-void
.end method
