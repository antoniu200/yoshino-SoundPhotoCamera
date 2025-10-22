.class public Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BuilderExtender"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .registers 9
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .prologue
    .line 617
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v4, :cond_3b

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 618
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 620
    .local v2, "styleContentView":Landroid/widget/RemoteViews;
    :goto_a
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    .line 621
    .local v0, "n":Landroid/app/Notification;
    if-eqz v2, :cond_3d

    .line 622
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 626
    :cond_12
    :goto_12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_26

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v4, :cond_26

    .line 627
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 628
    .local v1, "styleBigContentView":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_26

    .line 629
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 632
    .end local v1    # "styleBigContentView":Landroid/widget/RemoteViews;
    :cond_26
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3a

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v4, :cond_3a

    .line 633
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 634
    .local v3, "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_3a

    .line 635
    iput-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 638
    .end local v3    # "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_3a
    return-object v0

    .line 618
    .end local v0    # "n":Landroid/app/Notification;
    .end local v2    # "styleContentView":Landroid/widget/RemoteViews;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_a

    .line 623
    .restart local v0    # "n":Landroid/app/Notification;
    .restart local v2    # "styleContentView":Landroid/widget/RemoteViews;
    :cond_3d
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_12

    .line 624
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_12
.end method
