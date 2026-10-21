.class public Landroid/graphics/PathEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathEffect;->nativeDestructor(I)V

    return-void
.end method
