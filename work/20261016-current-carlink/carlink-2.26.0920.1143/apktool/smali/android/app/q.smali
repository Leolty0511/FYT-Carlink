.class public final synthetic Landroid/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/q;->b:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroid/app/q;->b:F

    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v0, p1}, Landroid/app/WallpaperColors;->b(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result p1

    return p1
.end method
