.class Landroid/widget/ListPopupWindow$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    return-object v0
.end method
