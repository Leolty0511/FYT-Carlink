.class public Lk0/ta$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ta;


# direct methods
.method public constructor <init>(Lk0/ta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ta$c;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/ta;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2
    sget v0, Lu0/b;->j4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lk0/ta;->t:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk0/ta$c;->a:Lk0/ta;

    invoke-static {v0}, Lk0/ta;->d3(Lk0/ta;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lk0/ta;->t:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lk0/ta$c;->a:Lk0/ta;

    invoke-static {v0}, Lk0/ta;->d3(Lk0/ta;)V

    :cond_1
    :goto_0
    return-void
.end method
