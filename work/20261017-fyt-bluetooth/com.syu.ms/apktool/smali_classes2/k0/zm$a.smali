.class public Lk0/zm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zm;


# direct methods
.method public constructor <init>(Lk0/zm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zm$a;->a:Lk0/zm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/zm$a;->a:Lk0/zm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/zm;->d3(Lk0/zm;I)V

    return-void
.end method
