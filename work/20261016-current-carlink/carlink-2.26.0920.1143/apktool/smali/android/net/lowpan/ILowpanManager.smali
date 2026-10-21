.class public interface abstract Landroid/net/lowpan/ILowpanManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub;
    }
.end annotation


# static fields
.field public static final LOWPAN_SERVICE_NAME:Ljava/lang/String; = "lowpan"


# virtual methods
.method public abstract addInterface(Landroid/net/lowpan/ILowpanInterface;)V
.end method

.method public abstract addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
.end method

.method public abstract getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;
.end method

.method public abstract getInterfaceList()[Ljava/lang/String;
.end method

.method public abstract removeInterface(Landroid/net/lowpan/ILowpanInterface;)V
.end method

.method public abstract removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
.end method
