/*
 pv-danilov
 */

jQuery( function( $ ) {
    /**
     * Индикация полей формы и показ сообщений в случае ошибки
     * @param field поле формы
     * @param tipText текст собщения об ошибке
     */
    function updateTips( field, tipText ) {
        field.data( 'content', tipText ); // вставляем текст ошибки в "облачко" с ошибкой левее поля
        field.popover('show'); // показываем "облачко" с ошибкой левее поля

        setTimeout(function() {
            field.popover('hide'); // скрываем "облачко"
            field.parent( '.form-group' ).removeClass( 'has-error', 5500 ); // скрываем индикацию полей
        }, 2500 );
    }

    /**
     * Проверяем значение поля по регулярному выражению
     * @param o поле формы
     * @param regexp регулярное выражение
     * @param n текст, возращаемый в случае несоответствия выражению
     * @returns {boolean}
     */
    function checkRegexp( o, regexp, n ) {
        if ( !( regexp.test( o.val() ) ) ) {
            o.parent( '.form-group' ).addClass( 'has-error' );
            updateTips( o, n );
            return false;
        } else {
            return true;
        }
    }

    /**
     * Проверяем длину поля
     * @param o поле формы
     * @param n отображаемое имя поля
     * @param min минимальное количество символов
     * @param max максимальное количество символов
     * @returns {boolean}
     */
    function checkLength( o, n, min, max ) {
        if ( o.val().length > max || o.val().length < min ) {
            o.parent( '.form-group' ).addClass( 'has-error' );

            updateTips( o, 'Длина поля "' + n + '" должна быть от ' + min + ' до ' + max + ' символов.' );
            return false;
        } else {
            return true;
        }
    }

    /**
     * Обработчик кнопки отправки формы
     */
    $( '.send-button' ).on( 'click', function( e ) {

        var valid = true;
        var form = $( this ).closest( 'form' );
        var name = form.find( 'input.name' );
        var phone = form.find( 'input.phone' );

        // Очищаем предыдущие ообщения об ошибках
        form.find( '.form-group' ).removeClass( 'has-error' );

        // Проверяем данные клиента на валидность
        valid = valid && checkLength( name, 'Имя', 3, 50 );
        valid = valid && checkLength( phone, 'Телефон', 6, 20 );

        if (valid != true) {
            e.preventDefault();
        }

    } );

    var errorFlag = $( '.send-button').data( 'error' );
    if (errorFlag == 1) {
        $( '.send-button').popover('show'); // показываем "облачко" с ошибкой под кнопкой

        setTimeout(function() {
            $( '.send-button').popover('hide'); // скрываем "облачко"
            $( '.send-button').data( 'error', 0 );
        }, 5500 );
    }

} );