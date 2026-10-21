.class public interface abstract Lcom/google/android/projection/transport/TransportFactory$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/transport/TransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/google/android/projection/protocol/Transport;)V
.end method

.method public abstract onDisconnected()V
.end method
