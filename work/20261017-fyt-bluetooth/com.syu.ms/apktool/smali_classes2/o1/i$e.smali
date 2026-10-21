.class public Lo1/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/i;


# direct methods
.method public constructor <init>(Lo1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i$e;->a:Lo1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 2

    const-string p1, "[,*]"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    array-length p2, p1

    if-lez p2, :cond_7

    .line 3
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2}, Lo1/i;->k(Lo1/i;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo1/i;->j(Lo1/i;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    const/4 p3, 0x0

    aget-object v0, p1, p3

    invoke-static {p2, v0}, Lo1/i;->l(Lo1/i;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    aget-object p2, p1, p3

    const-string v0, "$GNGSA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2}, Lo1/i;->i(Lo1/i;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2, p1, v1}, Lo1/i;->m(Lo1/i;[Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2, p1, p3}, Lo1/i;->m(Lo1/i;[Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 9
    :cond_1
    aget-object p2, p1, p3

    const-string v0, "$GPGSA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2, p1, p3}, Lo1/i;->m(Lo1/i;[Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 11
    :cond_2
    aget-object p2, p1, p3

    const-string v0, "$BDGSA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p0, Lo1/i$e;->a:Lo1/i;

    invoke-static {p2, p1, v1}, Lo1/i;->m(Lo1/i;[Ljava/lang/String;I)V

    goto :goto_2

    .line 13
    :cond_3
    aget-object p2, p1, p3

    const-string v0, "$GNRMC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    aget-object p2, p1, p3

    const-string v0, "$GPRMC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    aget-object p2, p1, p3

    const-string v0, "$BDRMC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    aget-object p2, p1, p3

    const-string v0, "$GPGSV"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "len="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p1, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 18
    :cond_5
    array-length p2, p1

    const/16 p3, 0x9

    if-lt p2, p3, :cond_7

    .line 19
    invoke-static {p1}, Lo1/i;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_6
    :goto_1
    invoke-static {p1}, Lo1/i;->b([Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
