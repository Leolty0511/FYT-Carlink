.class public interface abstract Landroid/hardware/ISerialManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSerialPorts()[Ljava/lang/String;
.end method

.method public abstract openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method
