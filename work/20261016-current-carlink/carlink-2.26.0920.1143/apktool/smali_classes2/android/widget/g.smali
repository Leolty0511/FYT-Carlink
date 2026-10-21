.class public final synthetic Landroid/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;I)V
    .locals 0

    iput p2, p0, Landroid/widget/g;->b:I

    iput-object p1, p0, Landroid/widget/g;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    iget v0, p0, Landroid/widget/g;->b:I

    iget-object v1, p0, Landroid/widget/g;->c:Landroid/widget/PopupWindow;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroid/widget/PopupWindow;->b(Landroid/widget/PopupWindow;)V

    return-void

    :goto_0
    invoke-static {v1}, Landroid/widget/PopupWindow;->b(Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
