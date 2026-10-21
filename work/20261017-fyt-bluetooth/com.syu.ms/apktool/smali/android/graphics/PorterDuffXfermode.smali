.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "SourceFile"


# instance fields
.field public final mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1}, Landroid/graphics/PorterDuffXfermode;->nativeCreateXfermode(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Xfermode;->native_instance:I

    return-void
.end method

.method private static native nativeCreateXfermode(I)I
.end method
