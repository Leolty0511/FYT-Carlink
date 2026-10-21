.class Landroid/os/StrictMode$ThreadSpanState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadSpanState"
.end annotation


# instance fields
.field public mActiveHead:Landroid/os/StrictMode$Span;

.field public mActiveSize:I

.field public mFreeListHead:Landroid/os/StrictMode$Span;

.field public mFreeListSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/StrictMode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/StrictMode$ThreadSpanState;-><init>()V

    return-void
.end method
