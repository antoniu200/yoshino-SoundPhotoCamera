.class public abstract Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;
.super Landroid/os/Binder;
.source "ISysmonService.java"

# interfaces
.implements Lcom/sonyericsson/psm/sysmonservice/ISysmonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.ISysmonService"

.field static final TRANSACTION_getCameraLowTempBurnTimeoutSec:I = 0x3

.field static final TRANSACTION_getThermalLevelForCamera:I = 0x1

.field static final TRANSACTION_getThermalLevelForFs1seg:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 41
    const-string v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    .line 42
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_3a

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 46
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 51
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForCamera()I

    move-result v0

    .line 53
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 59
    .end local v0    # "_result":I
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForFs1seg()I

    move-result v0

    .line 61
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 67
    .end local v0    # "_result":I
    :sswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getCameraLowTempBurnTimeoutSec()I

    move-result v0

    .line 69
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 42
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
