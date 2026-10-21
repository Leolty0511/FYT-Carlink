.class public final synthetic Landroid/accessibilityservice/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Landroid/accessibilityservice/e;->b:I

    iput-object p1, p0, Landroid/accessibilityservice/e;->d:Ljava/lang/Object;

    iput p2, p0, Landroid/accessibilityservice/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/accessibilityservice/e;->b:I

    iget v1, p0, Landroid/accessibilityservice/e;->c:I

    iget-object v2, p0, Landroid/accessibilityservice/e;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v2, v1}, Landroid/provider/FontsContract;->l(Landroid/provider/FontsContract$FontRequestCallback;I)V

    return-void

    :pswitch_1
    check-cast v2, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-static {v2, v1}, Landroid/accessibilityservice/FingerprintGestureController;->a(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    return-void

    :goto_0
    check-cast v2, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-static {v2, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
