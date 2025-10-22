.class public Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mFooterView:Landroid/widget/TextView;

.field private final mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mMessage:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V
    .registers 4
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p2, "footer"    # Landroid/widget/TextView;
    .param p3, "textId"    # I

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 850
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    .line 851
    iput p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mMessage:I

    .line 852
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 860
    if-eqz p2, :cond_1a

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mMessage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    :goto_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 868
    return-void

    .line 864
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14
.end method
