.class final enum Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
.super Ljava/lang/Enum;
.source "SoundPhotoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field public static final enum Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field public static final enum Flash:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field public static final enum Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field public static final enum SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field public static final enum Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    const-string v1, "Space"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    const-string v1, "Facing"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    const-string v1, "Flash"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Flash:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    const-string v1, "Menu"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    const-string v1, "SelfTimer"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Flash:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    return-object v0
.end method
