.class public interface abstract Landroid/content/pm/IOtaDexopt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub;
    }
.end annotation


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract dexoptNextPackage()V
.end method

.method public abstract getProgress()F
.end method

.method public abstract isDone()Z
.end method

.method public abstract nextDexoptCommand()Ljava/lang/String;
.end method

.method public abstract prepare()V
.end method
