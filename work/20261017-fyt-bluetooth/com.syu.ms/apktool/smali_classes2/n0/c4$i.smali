.class public Ln0/c4$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c4;->F3(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$i;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->n:Lo1/f0;

    sget-object v1, Lz/a;->d:Lo1/e0;

    sget-object v2, Lz/a;->y:Lo1/q;

    invoke-virtual {v0, v1, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lz/a;->y:Lo1/q;

    return-void
.end method
