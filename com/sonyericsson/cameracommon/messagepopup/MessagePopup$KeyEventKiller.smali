.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyEventKiller"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1445
    sparse-switch p2, :sswitch_data_8

    .line 1454
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1451
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1445
    nop

    :sswitch_data_8
    .sparse-switch
        0x1b -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_5
    .end sparse-switch
.end method
