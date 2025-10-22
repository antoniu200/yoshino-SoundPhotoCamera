.class public Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>(Landroid/support/v4/content/pm/ShortcutInfoCompat$1;)V

    iput-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 167
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$102(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/Context;)Landroid/content/Context;

    .line 168
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$202(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$300(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut much have a non-empty label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_14
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2d

    .line 288
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut much have an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2d
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    return-object v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "activity"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$802(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 275
    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$502(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 209
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "icon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$100(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$702(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/graphics/drawable/IconCompat;

    .line 262
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$602(Landroid/support/v4/content/pm/ShortcutInfoCompat;[Landroid/content/Intent;)[Landroid/content/Intent;

    .line 235
    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "longLabel"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$402(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 197
    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$302(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 183
    return-object p0
.end method
