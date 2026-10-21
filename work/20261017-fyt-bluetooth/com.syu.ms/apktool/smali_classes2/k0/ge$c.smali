.class public Lk0/ge$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ge;


# direct methods
.method public constructor <init>(Lk0/ge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ge$c;->a:Lk0/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataMain.sBspAirKey ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->E0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->E0:I

    const/16 v1, 0xd

    const/16 v2, 0xe

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    invoke-static {v0, v2}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    invoke-static {v0, v2}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object v0, p0, Lk0/ge$c;->a:Lk0/ge;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
