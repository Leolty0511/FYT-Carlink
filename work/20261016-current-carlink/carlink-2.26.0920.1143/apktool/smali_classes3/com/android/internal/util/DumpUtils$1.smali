.class final Lcom/android/internal/util/DumpUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dump:Lcom/android/internal/util/DumpUtils$Dump;

.field final synthetic val$prefix:Ljava/lang/String;

.field final synthetic val$sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;Lcom/android/internal/util/DumpUtils$Dump;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    iput-object p2, p0, Lcom/android/internal/util/DumpUtils$1;->val$dump:Lcom/android/internal/util/DumpUtils$Dump;

    iput-object p3, p0, Lcom/android/internal/util/DumpUtils$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/util/DumpUtils$1;->val$dump:Lcom/android/internal/util/DumpUtils$Dump;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/internal/util/DumpUtils$1;->val$prefix:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v1, v0, v2}, Lcom/android/internal/util/DumpUtils$Dump;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
