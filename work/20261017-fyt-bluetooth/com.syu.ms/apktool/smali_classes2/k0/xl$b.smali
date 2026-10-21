.class public Lk0/xl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xl;


# direct methods
.method public constructor <init>(Lk0/xl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xl$b;->a:Lk0/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xe0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xc0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xa0

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x80

    .line 2
    :goto_0
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lk0/xl$b;->a:Lk0/xl;

    sget-object v2, Lh0/c;->j:Ljava/lang/String;

    sget-object v3, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lk0/xl;->d3(Lk0/xl;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
