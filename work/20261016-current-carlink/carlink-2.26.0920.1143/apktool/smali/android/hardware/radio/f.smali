.class public final synthetic Landroid/hardware/radio/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/hardware/radio/TunerCallbackAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 0

    iput p2, p0, Landroid/hardware/radio/f;->b:I

    iput-object p1, p0, Landroid/hardware/radio/f;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/hardware/radio/f;->b:I

    iget-object v1, p0, Landroid/hardware/radio/f;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->g(Landroid/hardware/radio/TunerCallbackAdapter;)V

    return-void

    :goto_0
    invoke-static {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->a(Landroid/hardware/radio/TunerCallbackAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
