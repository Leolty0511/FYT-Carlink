.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    }
.end annotation


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x46

    const/4 v6, 0x6

    const/16 v5, 0x1e

    const/16 v4, 0x14

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    .line 42
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "00"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "01"

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "02"

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "10"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "11"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "12"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "13"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "15"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "16"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "17"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "20"

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "21"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "22"

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "30"

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "37"

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    .line 59
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    .line 65
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "235"

    const/16 v3, 0x1c

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "240"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "241"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "242"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "243"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "250"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "251"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "253"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "254"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "255"

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "400"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "401"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "402"

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "403"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "410"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "411"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "412"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "413"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "414"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "415"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "416"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "417"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "420"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "421"

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "422"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "423"

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "424"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "425"

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "426"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "427"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "710"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "711"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "712"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "713"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "714"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "715"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    .line 105
    const/16 v0, 0x136

    :goto_1
    const/16 v1, 0x13c

    if-gt v0, v1, :cond_1

    .line 106
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    const/16 v0, 0x140

    :goto_2
    const/16 v1, 0x151

    if-gt v0, v1, :cond_2

    .line 109
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    :cond_2
    const/16 v0, 0x154

    :goto_3
    const/16 v1, 0x165

    if-gt v0, v1, :cond_3

    .line 112
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :cond_3
    const/16 v0, 0x168

    :goto_4
    const/16 v1, 0x171

    if-gt v0, v1, :cond_4

    .line 115
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 117
    :cond_4
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "390"

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "391"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "392"

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "393"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "394"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "395"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "703"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "723"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    .line 129
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4300"

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4301"

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4302"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4303"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4304"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4305"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4306"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4307"

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4308"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4309"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4310"

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4311"

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4312"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4313"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4314"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4315"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4316"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4317"

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4318"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4319"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4320"

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4321"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4322"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4323"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4324"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4325"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "4326"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7001"

    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7002"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7003"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7004"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7005"

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7006"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7007"

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7008"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7009"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7010"

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7011"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7020"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7021"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7022"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7023"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7040"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "7240"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8001"

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8002"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8003"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8004"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8005"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8006"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8007"

    const/16 v3, 0x22

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8008"

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8009"

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8010"

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8011"

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8012"

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8013"

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8017"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8018"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8019"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8020"

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8026"

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8100"

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8101"

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8102"

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8110"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8111"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8112"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    const-string v2, "8200"

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const/4 v5, 0x0

    .line 252
    :goto_0
    return-object v5

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_1

    .line 211
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 214
    :cond_1
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    .line 215
    .local v4, "twoDigitDataLength":Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    if-eqz v4, :cond_3

    .line 216
    iget-boolean v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable:Z

    if-eqz v5, :cond_2

    .line 217
    iget v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v8, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 219
    :cond_2
    iget v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v8, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_4

    .line 223
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 226
    :cond_4
    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "firstThreeDigits":Ljava/lang/String;
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    .line 228
    .local v2, "threeDigitDataLength":Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    if-eqz v2, :cond_6

    .line 229
    iget-boolean v5, v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable:Z

    if-eqz v5, :cond_5

    .line 230
    iget v5, v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v9, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 232
    :cond_5
    iget v5, v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v9, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_7

    .line 236
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 239
    :cond_7
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    .line 240
    .local v3, "threeDigitPlusDigitDataLength":Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    if-eqz v3, :cond_9

    .line 241
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable:Z

    if-eqz v5, :cond_8

    .line 242
    iget v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v7, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 244
    :cond_8
    iget v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v7, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 247
    :cond_9
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:Ljava/util/Map;

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    .line 248
    .local v0, "firstFourDigitLength":Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    if-eqz v0, :cond_b

    .line 249
    iget-boolean v5, v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable:Z

    if-eqz v5, :cond_a

    .line 250
    iget v5, v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v7, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 252
    :cond_a
    iget v5, v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    invoke-static {v7, v5, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 255
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aiSize"    # I
    .param p1, "fieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, p0, :cond_0

    .line 260
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 263
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p2, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, p0, p1

    if-ge v5, v6, :cond_1

    .line 266
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 269
    :cond_1
    add-int v5, p0, p1

    invoke-virtual {p2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "field":Ljava/lang/String;
    add-int v5, p0, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "remaining":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "parsedAI":Ljava/lang/String;
    if-nez v2, :cond_2

    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .restart local v4    # "result":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "aiSize"    # I
    .param p1, "variableFieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v6, 0x0

    invoke-virtual {p2, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, p0, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 280
    .local v2, "maxSize":I
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "remaining":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "result":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "parsedAI":Ljava/lang/String;
    if-nez v3, :cond_0

    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
