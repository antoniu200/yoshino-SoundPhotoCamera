.class Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISysmonService.java"

# interfaces
.implements Lcom/sonyericsson/psm/sysmonservice/ISysmonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCameraLowTempBurnTimeoutSec()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 140
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    return v2

    .line 140
    .end local v2    # "_result":I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    return-object v0
.end method

.method public getThermalLevelForCamera()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 106
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    return v2

    .line 106
    .end local v2    # "_result":I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getThermalLevelForFs1seg()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 123
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return v2

    .line 123
    .end local v2    # "_result":I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
