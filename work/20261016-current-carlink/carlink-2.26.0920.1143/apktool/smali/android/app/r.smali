.class public final synthetic Landroid/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/app/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroid/app/r;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/telecom/Logging/EventManager;->b(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroid/provider/FontsContract;->i([B[B)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    check-cast p2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {p1, p2}, Landroid/app/WallpaperColors;->a(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I

    move-result p1

    return p1

    :goto_0
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->c(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
