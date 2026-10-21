.class final Lcom/android/internal/logging/AndroidHandler$1;
.super Ljava/util/logging/Formatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/AndroidHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/io/StringWriter;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/16 v4, 0x100

    .line 16
    .line 17
    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "\n"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
