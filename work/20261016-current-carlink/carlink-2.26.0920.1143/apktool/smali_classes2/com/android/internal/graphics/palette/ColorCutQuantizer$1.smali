.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    check-cast p2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;->compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I

    move-result p1

    return p1
.end method
