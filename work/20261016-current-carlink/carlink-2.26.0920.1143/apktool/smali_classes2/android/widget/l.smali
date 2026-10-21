.class public final synthetic Landroid/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/SelectionActionModeHelper;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper;I)V
    .locals 0

    iput p2, p0, Landroid/widget/l;->b:I

    iput-object p1, p0, Landroid/widget/l;->c:Landroid/widget/SelectionActionModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroid/widget/l;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/l;->c:Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-static {v0, p1}, Landroid/widget/SelectionActionModeHelper;->b(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroid/widget/l;->c:Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-static {v0, p1}, Landroid/widget/SelectionActionModeHelper;->a(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
