.class Landroid/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/SearchView;->access$500(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/widget/SearchView;->access$600(Landroid/widget/SearchView;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/widget/SearchView;->access$700(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/widget/SearchView;->access$800(Landroid/widget/SearchView;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/widget/SearchView;->access$1100(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 52
    .line 53
    invoke-static {p1}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 58
    .line 59
    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne p1, v0, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    .line 66
    .line 67
    invoke-static {p1}, Landroid/widget/SearchView;->access$1400(Landroid/widget/SearchView;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return-void
.end method
