.class public interface abstract Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
.super Ljava/lang/Object;
.source "IGDSize.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Default;,
        Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;
    }
.end annotation


# virtual methods
.method public abstract getHeight()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWidth()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
