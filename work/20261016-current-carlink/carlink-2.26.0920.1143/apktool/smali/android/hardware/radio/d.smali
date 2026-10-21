.class public final synthetic Landroid/hardware/radio/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;ZI)V
    .locals 0

    iput p3, p0, Landroid/hardware/radio/d;->b:I

    iput-object p1, p0, Landroid/hardware/radio/d;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-boolean p2, p0, Landroid/hardware/radio/d;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/hardware/radio/d;->b:I

    iget-boolean v1, p0, Landroid/hardware/radio/d;->d:Z

    iget-object v2, p0, Landroid/hardware/radio/d;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->b(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->h(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    return-void

    :pswitch_2
    invoke-static {v2, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->i(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->c(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
