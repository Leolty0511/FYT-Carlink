.class public Landroid/graphics/Xfermode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:I


# instance fields
.field porterDuffMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v0, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    sput v0, Landroid/graphics/Xfermode;->DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 5
    .line 6
    iput v0, p0, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 7
    .line 8
    return-void
.end method
