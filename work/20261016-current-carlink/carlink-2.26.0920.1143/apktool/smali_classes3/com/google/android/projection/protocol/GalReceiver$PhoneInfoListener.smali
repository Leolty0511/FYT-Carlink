.class public interface abstract Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneInfoListener"
.end annotation


# virtual methods
.method public abstract onPhoneInfoAvailable(Lcom/google/android/projection/proto/Common$PhoneInfo;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
