.class public interface abstract Landroid/service/carrier/ICarrierMessagingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadMmsComplete(I)V
.end method

.method public abstract onFilterComplete(I)V
.end method

.method public abstract onSendMmsComplete(I[B)V
.end method

.method public abstract onSendMultipartSmsComplete(I[I)V
.end method

.method public abstract onSendSmsComplete(II)V
.end method
