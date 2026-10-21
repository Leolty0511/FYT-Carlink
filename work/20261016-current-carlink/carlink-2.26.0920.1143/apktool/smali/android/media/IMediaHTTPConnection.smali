.class public interface abstract Landroid/media/IMediaHTTPConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaHTTPConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract disconnect()V
.end method

.method public abstract getMIMEType()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract readAt(JI)I
.end method
