.class public final synthetic Landroid/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;I)V
    .locals 0

    iput p2, p0, Landroid/widget/k;->b:I

    iput-object p1, p0, Landroid/widget/k;->c:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroid/widget/k;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/k;->c:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/k;->c:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Landroid/widget/k;->c:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
