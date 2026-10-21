.class public interface abstract Landroid/security/IKeystoreService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub;
    }
.end annotation


# virtual methods
.method public abstract clear_uid(J)I
.end method

.method public abstract del(Ljava/lang/String;I)I
.end method

.method public abstract del_key(Ljava/lang/String;I)I
.end method

.method public abstract duplicate(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public abstract exist(Ljava/lang/String;I)I
.end method

.method public abstract generate(Ljava/lang/String;IIII[[B)I
.end method

.method public abstract get(Ljava/lang/String;)[B
.end method

.method public abstract get_pubkey(Ljava/lang/String;)[B
.end method

.method public abstract getmtime(Ljava/lang/String;)J
.end method

.method public abstract grant(Ljava/lang/String;I)I
.end method

.method public abstract import_key(Ljava/lang/String;[BII)I
.end method

.method public abstract insert(Ljava/lang/String;[BII)I
.end method

.method public abstract is_hardware_backed(Ljava/lang/String;)I
.end method

.method public abstract lock()I
.end method

.method public abstract password(Ljava/lang/String;)I
.end method

.method public abstract reset()I
.end method

.method public abstract saw(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/String;[B)[B
.end method

.method public abstract test()I
.end method

.method public abstract ungrant(Ljava/lang/String;I)I
.end method

.method public abstract unlock(Ljava/lang/String;)I
.end method

.method public abstract verify(Ljava/lang/String;[B[B)I
.end method

.method public abstract zero()I
.end method
