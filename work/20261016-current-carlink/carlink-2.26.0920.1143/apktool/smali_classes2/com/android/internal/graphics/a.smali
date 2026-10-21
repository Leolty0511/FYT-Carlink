.class public final synthetic Lcom/android/internal/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/a;->a:I

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .locals 1

    iget v0, p0, Lcom/android/internal/graphics/a;->a:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->b(IIII)D

    move-result-wide p1

    return-wide p1
.end method
