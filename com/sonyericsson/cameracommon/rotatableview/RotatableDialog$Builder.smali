.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "RotatableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field private mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

.field protected mScrollableView:Landroid/view/View;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    .line 58
    return-void
.end method


# virtual methods
.method public createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 114
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;-><init>(Landroid/app/AlertDialog;)V

    .line 115
    .local v1, "rotatableDialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setViewAsScrollable(Landroid/view/View;)V

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-eq v2, v5, :cond_20

    .line 119
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-ne v2, v5, :cond_35

    move v2, v3

    :goto_1d
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCancelable(Z)V

    .line 121
    :cond_20
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-eq v2, v5, :cond_2f

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    if-ne v2, v5, :cond_37

    .line 123
    :goto_2c
    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    :cond_2f
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 129
    return-object v1

    :cond_35
    move v2, v4

    .line 119
    goto :goto_1d

    :cond_37
    move v3, v4

    .line 122
    goto :goto_2c
.end method

.method public setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .registers 2

    .prologue
    .line 80
    const v0, 0x1080027

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 81
    return-object p0
.end method

.method public setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .registers 3
    .param p1, "isCancelable"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    .param p2, "isCancelableOnTouchOutside"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 104
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    .line 105
    return-object p0
.end method

.method public setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .registers 2
    .param p1, "sensorOrientation"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    .line 92
    return-object p0
.end method

.method public setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    .line 71
    return-object p0
.end method
