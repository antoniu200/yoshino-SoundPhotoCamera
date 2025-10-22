.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private mIsItemChecked:Z

.field private final mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private final mSharedPrefsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .registers 4
    .param p1, "shardPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p2, "sharedPrefsKey"    # Ljava/lang/String;

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mIsItemChecked:Z

    .line 1191
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 1192
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mSharedPrefsKey:Ljava/lang/String;

    .line 1193
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1197
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mIsItemChecked:Z

    .line 1198
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mSharedPrefsKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;->mIsItemChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 1203
    return-void
.end method
