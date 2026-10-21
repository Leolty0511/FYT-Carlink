.class public interface abstract Landroid/print/IPrintDocumentAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract finish()V
.end method

.method public abstract layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
.end method

.method public abstract setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
.end method

.method public abstract start()V
.end method

.method public abstract write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
.end method
