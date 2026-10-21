.class public Lk0/ii$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ii;


# direct methods
.method public constructor <init>(Lk0/ii;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ii$d;->a:Lk0/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ii$d;->a:Lk0/ii;

    sget-object v1, Lh0/c;->j:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lk0/ii;->a3(Lk0/ii;BLjava/lang/String;)V

    return-void
.end method
