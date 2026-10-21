.class public interface abstract Landroid/print/IWriteResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWriteFailed(Ljava/lang/CharSequence;I)V
.end method

.method public abstract onWriteFinished([Landroid/print/PageRange;I)V
.end method
