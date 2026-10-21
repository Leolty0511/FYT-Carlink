.class public interface abstract Landroid/os/ISecurityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecurityService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getKeyInterfaces(Ljava/lang/String;[I[I)Z
.end method

.method public abstract getSysUids()[I
.end method

.method public abstract isKeyService(Ljava/lang/String;)Z
.end method

.method public abstract judge(ILjava/lang/String;IILjava/lang/String;)I
.end method
