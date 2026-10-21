.class public Landroid/graphics/MaskFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/graphics/MaskFilter;->native_instance:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/MaskFilter;->nativeDestructor(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/MaskFilter;->native_instance:J

    .line 9
    .line 10
    return-void
.end method
