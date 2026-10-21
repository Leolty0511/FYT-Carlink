.class public final synthetic Landroid/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroid/widget/f;->b:I

    iput-object p1, p0, Landroid/widget/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/widget/f;->b:I

    iget-object v1, p0, Landroid/widget/f;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroid/widget/DateTimeView;

    invoke-static {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->a(Landroid/widget/DateTimeView;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {v1}, Landroid/widget/DatePickerCalendarDelegate;->a(Landroid/widget/DatePickerCalendarDelegate;)V

    return-void

    :goto_0
    check-cast v1, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->a(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
