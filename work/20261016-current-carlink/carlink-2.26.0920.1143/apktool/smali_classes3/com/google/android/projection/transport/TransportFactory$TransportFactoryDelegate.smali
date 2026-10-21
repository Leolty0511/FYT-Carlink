.class interface abstract Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/transport/TransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransportFactoryDelegate"
.end annotation


# virtual methods
.method public abstract shutdown()V
.end method

.method public abstract tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
