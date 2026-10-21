.class public final synthetic Landroidx/core/location/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V
    .locals 0

    iput p4, p0, Landroidx/core/location/h;->b:I

    iput-object p1, p0, Landroidx/core/location/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/h;->c:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/h;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/core/location/h;->b:I

    iget v1, p0, Landroidx/core/location/h;->d:I

    iget-object v2, p0, Landroidx/core/location/h;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/core/location/h;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-static {v3, v2, v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->a(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :goto_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-static {v3, v2, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->c(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
