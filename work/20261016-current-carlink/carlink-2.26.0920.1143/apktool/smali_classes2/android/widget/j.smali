.class public final synthetic Landroid/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/SearchView$SearchAutoComplete;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SearchView$SearchAutoComplete;I)V
    .locals 0

    iput p2, p0, Landroid/widget/j;->b:I

    iput-object p1, p0, Landroid/widget/j;->c:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/widget/j;->b:I

    iget-object v1, p0, Landroid/widget/j;->c:Landroid/widget/SearchView$SearchAutoComplete;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->c(Landroid/widget/SearchView$SearchAutoComplete;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->c(Landroid/widget/SearchView$SearchAutoComplete;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->c(Landroid/widget/SearchView$SearchAutoComplete;)V

    return-void

    :goto_0
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->c(Landroid/widget/SearchView$SearchAutoComplete;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
