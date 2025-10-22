.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;
.super Ljava/lang/Enum;
.source "SettingSelectability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

.field public static final enum FIX:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

.field public static final enum SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

.field public static final enum UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    const-string v1, "SELECTABLE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    .line 26
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    const-string v1, "FIX"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->FIX:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->FIX:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    return-object v0
.end method
