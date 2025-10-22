.class public interface abstract Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
.super Ljava/lang/Object;
.source "BatteryChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryChangedReceiverListener"
.end annotation


# virtual methods
.method public abstract onBatteryLevelChanged(I)V
.end method

.method public abstract onReachBatteryLimit(Z)V
.end method

.method public abstract onReachLowBattery()V
.end method
