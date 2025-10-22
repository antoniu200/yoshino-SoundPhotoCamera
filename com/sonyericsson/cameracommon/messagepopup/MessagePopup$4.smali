.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showStorageExplanatoryDialog(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field final synthetic val$sharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field final synthetic val$sharedPrefsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->val$sharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->val$sharedPrefsKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->val$sharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->val$sharedPrefsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 2606
    return-void
.end method
